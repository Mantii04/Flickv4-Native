.class public final Lcom/bumptech/glide/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/bumptech/glide/manager/h;

.field public final synthetic e:Lcom/bumptech/glide/manager/h;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/manager/g;->e:Lcom/bumptech/glide/manager/h;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/manager/g;->b:Lcom/bumptech/glide/manager/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lu2/D;->getInstance()Lu2/D;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lu2/D;->unblockHardwareBitmaps()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/manager/g;->e:Lcom/bumptech/glide/manager/h;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/manager/h;->e:Lcom/bumptech/glide/manager/i;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/i;->b:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/manager/g;->e:Lcom/bumptech/glide/manager/h;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bumptech/glide/manager/h;->b:Landroid/view/View;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/manager/g;->b:Lcom/bumptech/glide/manager/h;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/manager/g;->e:Lcom/bumptech/glide/manager/h;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/bumptech/glide/manager/h;->e:Lcom/bumptech/glide/manager/i;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/bumptech/glide/manager/i;->a:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
