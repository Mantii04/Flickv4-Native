.class public final Landroidx/fragment/app/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/s0;

.field public final synthetic e:Landroidx/fragment/app/S;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/S;Landroidx/fragment/app/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/Q;->e:Landroidx/fragment/app/S;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/Q;->b:Landroidx/fragment/app/s0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Q;->b:Landroidx/fragment/app/s0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/s0;->k()V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/fragment/app/Q;->e:Landroidx/fragment/app/S;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/fragment/app/S;->b:Landroidx/fragment/app/i0;

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/fragment/app/M0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/M0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/M0;->e()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
