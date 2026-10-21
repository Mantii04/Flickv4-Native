.class public final Landroidx/mediarouter/app/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/content/Context;

.field public final synthetic c:Landroidx/mediarouter/app/MediaRouteButton;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/c;->c:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/mediarouter/app/c;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/mediarouter/app/c;->b:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    sget-object p1, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/util/SparseArray;

    iget v0, p0, Landroidx/mediarouter/app/c;->a:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/c;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lf/a;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/c;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/mediarouter/app/c;->a:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/c;->c:Landroidx/mediarouter/app/MediaRouteButton;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/mediarouter/app/MediaRouteButton;->p:Landroidx/mediarouter/app/c;

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/c;->onCancelled(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/mediarouter/app/c;->a:I

    iget-object v2, p0, Landroidx/mediarouter/app/c;->c:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz p1, :cond_0

    .line 3
    sget-object v3, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iput-object v0, v2, Landroidx/mediarouter/app/MediaRouteButton;->p:Landroidx/mediarouter/app/c;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    :cond_1
    iput-object v0, v2, Landroidx/mediarouter/app/MediaRouteButton;->p:Landroidx/mediarouter/app/c;

    .line 8
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/c;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
