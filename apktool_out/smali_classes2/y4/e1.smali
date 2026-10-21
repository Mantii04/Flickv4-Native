.class public final Ly4/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/SettingsActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/SettingsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly4/e1;->b:Lflix/com/vision/activities/SettingsActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly4/e1;->b:Lflix/com/vision/activities/SettingsActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lflix/com/vision/activities/SettingsActivity;->H0:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
