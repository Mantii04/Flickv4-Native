.class public final Landroidx/fragment/app/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/J0;

.field public final synthetic e:Landroidx/fragment/app/M0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/M0;Landroidx/fragment/app/J0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/H0;->e:Landroidx/fragment/app/M0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/H0;->b:Landroidx/fragment/app/J0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/H0;->e:Landroidx/fragment/app/M0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/M0;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/H0;->b:Landroidx/fragment/app/J0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/L0;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->b(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
