.class public final synthetic Lz4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultVideosActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/h;->b:I

    iput-object p1, p0, Lz4/h;->e:Lflix/com/vision/activities/adult/AdultVideosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lz4/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz4/h;->e:Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 7
    .line 8
    iget v1, v0, Lflix/com/vision/activities/adult/AdultVideosActivity;->x:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Lflix/com/vision/activities/adult/AdultVideosActivity;->x:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/adult/AdultVideosActivity;->getVideos(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    .line 19
    iget-object v1, p0, Lz4/h;->e:Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 20
    .line 21
    iput-boolean v0, v1, Lflix/com/vision/activities/adult/AdultVideosActivity;->z:Z

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object v0, p0, Lz4/h;->e:Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 25
    .line 26
    iget-object v1, v0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "We\'re not able to load any data. AdultZone may be blocked in your region. Please try with a VPN"

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_2
    iget-object v0, p0, Lz4/h;->e:Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
