.class public final synthetic Ly4/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly4/H0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget v1, p0, Ly4/H0;->b:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    sget v1, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->G:I

    .line 18
    .line 19
    invoke-static {v0, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    sget v1, Lflix/com/vision/activities/SeriesDetailActivity;->G:I

    .line 24
    .line 25
    invoke-static {v0, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_3
    sget p1, Lflix/com/vision/activities/SearchResultsActivity;->H:I

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_4
    sget v1, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 33
    .line 34
    const-class v1, Lflix/com/vision/activities/MainActivity;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
