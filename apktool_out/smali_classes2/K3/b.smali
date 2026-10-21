.class public final LK3/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LK3/d;


# direct methods
.method public constructor <init>(LK3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK3/b;->a:LK3/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LK3/b;->a:LK3/d;

    .line 2
    .line 3
    iget-object p1, p1, LK3/r;->b:LK3/q;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, LK3/q;->h(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
