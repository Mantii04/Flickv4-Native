.class public final Landroidx/mediarouter/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/r;->b:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/r;->b:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/mediarouter/app/D;->p0:Z

    .line 4
    .line 5
    xor-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    iput-boolean v1, p1, Landroidx/mediarouter/app/D;->p0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/app/D;->p0:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/mediarouter/app/D;->w0:Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Landroidx/mediarouter/app/D;->x0:Landroid/view/animation/Interpolator;

    .line 25
    .line 26
    :goto_0
    iput-object v0, p1, Landroidx/mediarouter/app/D;->v0:Landroid/view/animation/Interpolator;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/D;->p(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
