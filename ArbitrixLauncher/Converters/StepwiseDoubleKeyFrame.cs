using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Animation;

namespace ArbitrixLauncher.Converters
{
    class StepwiseDoubleKeyFrame : DoubleKeyFrame
    {
        public StepwiseDoubleKeyFrame() { }

        protected StepwiseDoubleKeyFrame(double value, KeyTime keyTime, int numberOfParts) :
            base(value, keyTime)
        {
            NumberOfParts = numberOfParts;
        }

        protected override Freezable CreateInstanceCore() =>
            new StepwiseDoubleKeyFrame(Value, KeyTime, NumberOfParts);

        protected override double InterpolateValueCore(double baseValue, double keyFrameProgress)
        {
            var fullDiff = Value - baseValue; // полный путь, который нужно пройти за целый фрейм
                                              // в keyFrameProgress текущее время фрейма, от 0 до 1.
                                              // считаем, в какую из частей мы сейчас попадаем.
                                              // например, если у нас 6 частей, а время между 4/6 и 5/6, по показываем 4/6
            var currentPart = Math.Floor(keyFrameProgress * NumberOfParts) / NumberOfParts;
            return baseValue + currentPart * fullDiff;
        }

        public int NumberOfParts
        {
            get { return (int)GetValue(NumberOfPartsProperty); }
            set { SetValue(NumberOfPartsProperty, value); }
        }

        public static readonly DependencyProperty NumberOfPartsProperty =
            DependencyProperty.Register(
                "NumberOfParts", typeof(int), typeof(StepwiseDoubleKeyFrame),
                new PropertyMetadata(4)); // по умолчанию 4 части
    }
}
