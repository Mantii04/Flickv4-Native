.class public final synthetic Ly4/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/SplashScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SplashScreenActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/h1;->b:Lflix/com/vision/activities/SplashScreenActivity;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    sget p1, Lflix/com/vision/activities/SplashScreenActivity;->j:I

    .line 2
    .line 3
    iget-object p1, p0, Ly4/h1;->b:Lflix/com/vision/activities/SplashScreenActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lflix/com/vision/activities/SplashScreenActivity;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
