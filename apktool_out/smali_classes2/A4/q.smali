.class public final synthetic LA4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LA4/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "hindi_include_english"

    .line 2
    .line 3
    iget v0, p0, LA4/q;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->v:I

    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    sget p1, Lflix/com/vision/activities/YouTubePlayerActivity;->r:I

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    sget p1, Lflix/com/vision/activities/WatchedAcvivity;->n:I

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 18
    .line 19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, p1, v1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 31
    .line 32
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-static {v0, p1, v1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_4
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_5
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_6
    sget p1, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_7
    sget p1, Lflix/com/vision/tv/TVCategoriesActivity;->H:I

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_8
    sget p1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->J:I

    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_9
    sget p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->t:I

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_a
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_b
    sget p1, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->z:I

    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_c
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
