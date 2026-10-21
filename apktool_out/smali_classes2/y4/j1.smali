.class public final synthetic Ly4/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/TraktActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/TraktActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/j1;->b:I

    iput-object p1, p0, Ly4/j1;->e:Lflix/com/vision/activities/TraktActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ly4/j1;->b:I

    .line 2
    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly4/j1;->e:Lflix/com/vision/activities/TraktActivity;

    .line 9
    .line 10
    iget-object v1, v0, Lflix/com/vision/activities/TraktActivity;->m:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v2, v0, Lflix/com/vision/activities/TraktActivity;->e:LC4/P;

    .line 13
    .line 14
    iget-object v3, v0, Lflix/com/vision/activities/TraktActivity;->r:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1, v2, v3}, Lflix/com/vision/activities/TraktActivity;->i(Ljava/util/List;Ljava/util/ArrayList;LC4/P;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Ly4/j1;->e:Lflix/com/vision/activities/TraktActivity;

    .line 21
    .line 22
    iget-object v1, v0, Lflix/com/vision/activities/TraktActivity;->n:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v2, v0, Lflix/com/vision/activities/TraktActivity;->f:LC4/P;

    .line 25
    .line 26
    iget-object v3, v0, Lflix/com/vision/activities/TraktActivity;->s:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, v2, v3}, Lflix/com/vision/activities/TraktActivity;->i(Ljava/util/List;Ljava/util/ArrayList;LC4/P;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object v0, p0, Ly4/j1;->e:Lflix/com/vision/activities/TraktActivity;

    .line 33
    .line 34
    iget-object v1, v0, Lflix/com/vision/activities/TraktActivity;->p:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v2, v0, Lflix/com/vision/activities/TraktActivity;->j:LC4/P;

    .line 37
    .line 38
    iget-object v3, v0, Lflix/com/vision/activities/TraktActivity;->t:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1, v2, v3}, Lflix/com/vision/activities/TraktActivity;->i(Ljava/util/List;Ljava/util/ArrayList;LC4/P;Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
