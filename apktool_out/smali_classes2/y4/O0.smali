.class public final synthetic Ly4/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchResultsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchResultsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/O0;->b:I

    iput-object p1, p0, Ly4/O0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Ly4/O0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    iget-object p1, p0, Ly4/O0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 9
    .line 10
    iget-object p1, p1, Lflix/com/vision/activities/SearchResultsActivity;->n:Landroid/widget/TextView;

    .line 11
    .line 12
    const-string v0, "People \u00b7 0"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 19
    .line 20
    iget-object v0, p0, Ly4/O0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 21
    .line 22
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->E:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parsePeople(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->v:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->G:LC4/r;

    .line 39
    .line 40
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->n:Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v4, "People \u00b7 "

    .line 48
    .line 49
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-lez p1, :cond_0

    .line 71
    .line 72
    iget-object p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
