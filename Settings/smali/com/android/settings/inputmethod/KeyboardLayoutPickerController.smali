.class public Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "KeyboardLayoutPickerController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/SwitchPreference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceId:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCheckedState()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->createPreferenceHierarchy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public initialize(Landroidx/fragment/app/Fragment;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mParent:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->updateCheckedState()V

    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceId:I

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->updateCheckedState()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->mInputDeviceId:I

    return-void
.end method
