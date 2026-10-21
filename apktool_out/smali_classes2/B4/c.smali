.class public final synthetic LB4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LB4/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget p1, p0, LB4/c;->b:I

    packed-switch p1, :pswitch_data_0

    sget p1, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->y:I

    return-void

    :pswitch_0
    sget p1, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->v:I

    return-void

    :pswitch_1
    sget p1, Lflix/com/vision/activities/adult/AdultVideosActivity;->C:I

    return-void

    :pswitch_2
    sget p1, Lflix/com/vision/activities/adult/AdultHistoryActivity;->v:I

    return-void

    :pswitch_3
    sget p1, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    return-void

    :pswitch_4
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    return-void

    :pswitch_5
    sget p1, Lflix/com/vision/activities/LinksActivity;->b0:I

    return-void

    :pswitch_6
    sget p1, Lflix/com/vision/tv/ChannelsListActivityLegacy;->y:I

    return-void

    :pswitch_7
    sget-boolean p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    return-void

    :pswitch_8
    sget p1, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->z:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
