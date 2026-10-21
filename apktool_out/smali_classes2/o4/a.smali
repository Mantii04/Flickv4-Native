.class public final Lo4/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo4/c;


# direct methods
.method public constructor <init>(Lo4/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/a;->a:Lo4/c;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lo4/a;->a:Lo4/c;

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {p1, v0}, Lo4/c;->a(Lo4/c;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
