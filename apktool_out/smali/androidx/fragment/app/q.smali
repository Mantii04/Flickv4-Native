.class public abstract Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/L0;

.field public final b:LI/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/L0;LI/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/q;->b:LI/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/q;->b:LI/f;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/L0;->completeSpecialEffect(LI/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->a:Landroidx/fragment/app/L0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eq v1, v0, :cond_1

    .line 18
    .line 19
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    return v0
.end method
