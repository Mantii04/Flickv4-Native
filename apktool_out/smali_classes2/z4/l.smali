.class public final synthetic Lz4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/l;->b:I

    iput-object p1, p0, Lz4/l;->e:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lz4/l;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz4/l;->e:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 7
    .line 8
    iget-object v1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->t:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->s:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->s:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->getVideos(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lz4/l;->e:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 24
    .line 25
    iget-object v0, v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lz4/l;->e:Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 33
    .line 34
    iput-boolean v0, v1, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->v:Z

    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
