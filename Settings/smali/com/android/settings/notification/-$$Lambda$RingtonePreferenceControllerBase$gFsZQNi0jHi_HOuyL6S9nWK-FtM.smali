.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;->f$0:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;->f$0:Landroidx/preference/Preference;

    const v0, 0x104063d

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
