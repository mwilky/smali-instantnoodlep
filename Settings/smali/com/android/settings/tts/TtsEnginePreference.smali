.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Landroidx/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/tts/TtsEnginePreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const p1, 0x7f0d02a7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0d0294

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    iput-object p3, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iput-boolean p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean p2, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/settings/tts/TtsEnginePreference$2;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings/tts/TtsEnginePreference$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    const-string p1, "Displaying data alert for :"

    invoke-static {p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline23(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TtsEnginePreference"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const p0, 0x7f1216df

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v1, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to getView() before a call tosetSharedState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onClick()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
