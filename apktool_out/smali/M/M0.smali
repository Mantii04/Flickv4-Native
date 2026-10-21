.class public final LM/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic e:LM/S0;

.field public final synthetic f:LM/I0;

.field public final synthetic j:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;LM/S0;LM/I0;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/M0;->b:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, LM/M0;->e:LM/S0;

    .line 7
    .line 8
    iput-object p3, p0, LM/M0;->f:LM/I0;

    .line 9
    .line 10
    iput-object p4, p0, LM/M0;->j:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LM/M0;->e:LM/S0;

    .line 2
    .line 3
    iget-object v1, p0, LM/M0;->f:LM/I0;

    .line 4
    .line 5
    iget-object v2, p0, LM/M0;->b:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, LM/O0;->d(Landroid/view/View;LM/S0;LM/I0;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LM/M0;->j:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
