.class public final synthetic Ly4/Q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Z

.field public final synthetic f:Lflix/com/vision/activities/base/a;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/base/a;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/Q0;->b:I

    iput-object p1, p0, Ly4/Q0;->f:Lflix/com/vision/activities/base/a;

    iput-boolean p2, p0, Ly4/Q0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Ly4/Q0;->b:I

    .line 2
    .line 3
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly4/Q0;->f:Lflix/com/vision/activities/base/a;

    .line 9
    .line 10
    check-cast v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;

    .line 11
    .line 12
    iget-object v1, v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->u:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Ly4/Q0;->e:Z

    .line 18
    .line 19
    invoke-static {p1, v2}, Lflix/com/vision/utils/JsonUtils;->parseListEpisode(Lcom/google/gson/JsonElement;Z)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->p:LC4/G;

    .line 27
    .line 28
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->F:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-object p1, v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->s:Landroidx/leanback/widget/VerticalGridView;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput-boolean v2, v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->F:Z

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-lez p1, :cond_1

    .line 49
    .line 50
    iget p1, v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->C:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, -0x1

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->episodeHighlited(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Ly4/Q0;->f:Lflix/com/vision/activities/base/a;

    .line 59
    .line 60
    check-cast v0, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 61
    .line 62
    iget-object v1, v0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    iget-boolean v2, p0, Ly4/Q0;->e:Z

    .line 68
    .line 69
    invoke-static {p1, v2}, Lflix/com/vision/utils/JsonUtils;->parseListEpisode(Lcom/google/gson/JsonElement;Z)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lflix/com/vision/activities/SeriesDetailActivity;->p:LC4/G;

    .line 77
    .line 78
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    iget-boolean p1, v0, Lflix/com/vision/activities/SeriesDetailActivity;->F:Z

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    iget-object p1, v0, Lflix/com/vision/activities/SeriesDetailActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iput-boolean v2, v0, Lflix/com/vision/activities/SeriesDetailActivity;->F:Z

    .line 93
    .line 94
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-lez p1, :cond_3

    .line 99
    .line 100
    iget p1, v0, Lflix/com/vision/activities/SeriesDetailActivity;->C:I

    .line 101
    .line 102
    add-int/lit8 p1, p1, -0x1

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/SeriesDetailActivity;->episodeHighlited(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
