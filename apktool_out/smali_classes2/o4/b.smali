.class public final Lo4/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo4/c;


# direct methods
.method public constructor <init>(Lo4/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/b;->a:Lo4/c;

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
    iget-object p1, p0, Lo4/b;->a:Lo4/c;

    .line 2
    .line 3
    iget-object v0, p1, Lo4/c;->e:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lo4/c;->a(Lo4/c;F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
