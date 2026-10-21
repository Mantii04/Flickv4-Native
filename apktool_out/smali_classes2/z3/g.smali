.class public final Lz3/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lz3/h;


# direct methods
.method public constructor <init>(Lz3/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz3/g;->a:Lz3/h;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lz3/g;->a:Lz3/h;

    .line 2
    .line 3
    iget-object v0, p1, Lz3/a;->b:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lz3/h;->updateBackProgress(F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
