.class public final LM/L0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LM/S0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(LM/S0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM/L0;->a:LM/S0;

    .line 2
    .line 3
    iput-object p2, p0, LM/L0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget-object v0, p0, LM/L0;->a:LM/S0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LM/S0;->setFraction(F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LM/L0;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-static {v0, p1}, LM/O0;->a(LM/S0;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
