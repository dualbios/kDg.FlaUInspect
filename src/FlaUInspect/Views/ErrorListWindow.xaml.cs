using kDg.FlaUInspect.Core.Logger;

namespace kDg.FlaUInspect.Views;

public partial class ErrorListWindow {
    public ErrorListWindow(InternalLogger logger) {
        InitializeComponent();

        List<InternalLoggerMessage> internalLoggerMessages = logger.Messages.ToList();
        ErrorItemsControl.ItemsSource = internalLoggerMessages;
    }
}