.class public final Lcom/bumptech/glide/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic e:Lcom/bumptech/glide/manager/i;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/manager/h;->e:Lcom/bumptech/glide/manager/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/manager/h;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/bumptech/glide/manager/g;-><init>(Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/h;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, LG2/t;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
