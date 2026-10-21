.class public final synthetic LB4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

.field public final synthetic e:Lflix/com/vision/models/Movie;

.field public final synthetic f:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Lflix/com/vision/models/Movie;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB4/x;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    iput-object p2, p0, LB4/x;->e:Lflix/com/vision/models/Movie;

    iput p3, p0, LB4/x;->f:I

    iput p4, p0, LB4/x;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 2
    .line 3
    iget-object v0, p0, LB4/x;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    sget v2, Lflix/com/vision/R$string;->ml_host:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "pref_ml_host"

    .line 23
    .line 24
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ld5/l;

    .line 29
    .line 30
    invoke-direct {v2, v0, v0, v1}, Ld5/l;-><init>(Landroid/content/Context;LU4/f;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, LB4/x;->e:Lflix/com/vision/models/Movie;

    .line 34
    .line 35
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v1, p0, LB4/x;->f:I

    .line 40
    .line 41
    iget v3, p0, LB4/x;->j:I

    .line 42
    .line 43
    invoke-virtual {v2, v0, v1, v3}, Ld5/l;->process(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
