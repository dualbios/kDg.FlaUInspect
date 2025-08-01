using FlaUI.Core;
using kDg.FlaUInspect.Core;
using kDg.FlaUInspect.Core.Extensions;

namespace kDg.FlaUInspect.ViewModels;

public class PatternItem(string key, string? value) : ObservableObject {
    private string _key = key;
    private string? _value = value;

    public string Key {
        get => _key;
        set => SetProperty(ref _key, value);
    }
    public string? Value {
        get => _value;
        set => SetProperty(ref _value, value);
    }

    public static PatternItem FromAutomationProperty<T>(string key, IAutomationProperty<T> value) {
        return new PatternItem(key, value!.ToDisplayText());
    }
}