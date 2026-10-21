.class public final Lflix/com/vision/activities/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

.field public final synthetic d:Lflix/com/vision/activities/DramaHomeActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/DramaHomeActivity;Ljava/lang/String;Ljava/util/ArrayList;Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/c;->d:Lflix/com/vision/activities/DramaHomeActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/activities/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lflix/com/vision/activities/c;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p4, p0, Lflix/com/vision/activities/c;->c:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/c;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 2
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/activities/c;->a:Ljava/lang/String;

    invoke-static {p1, p1}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/c;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lflix/com/vision/activities/c;->d:Lflix/com/vision/activities/DramaHomeActivity;

    invoke-virtual {v1, p1}, Lflix/com/vision/activities/DramaHomeActivity;->e(Lj6/h;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/c;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lflix/com/vision/activities/c;->c:Lflix/com/vision/activities/DramaHomeActivity$DRAMA_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0x8

    iget-object v1, p0, Lflix/com/vision/activities/c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lflix/com/vision/activities/c;->d:Lflix/com/vision/activities/DramaHomeActivity;

    packed-switch p1, :pswitch_data_0

    return-void

    .line 4
    :pswitch_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->G:LC4/z;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 7
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 9
    :cond_0
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 10
    :pswitch_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->H:LC4/z;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 13
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 15
    :cond_1
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 16
    :pswitch_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->K:LC4/z;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 19
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 21
    :cond_2
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 22
    :pswitch_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->J:LC4/z;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 25
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 27
    :cond_3
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 28
    :pswitch_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 29
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->I:LC4/z;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 31
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 33
    :cond_4
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 34
    :pswitch_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 35
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->F:LC4/z;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 37
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 39
    :cond_5
    iget-object p1, v2, Lflix/com/vision/activities/DramaHomeActivity;->L:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
