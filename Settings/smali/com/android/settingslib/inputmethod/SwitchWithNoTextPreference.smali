.class public Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method
