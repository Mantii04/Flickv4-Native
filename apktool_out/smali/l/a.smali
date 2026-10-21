.class public final Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/D0;


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/a;->c:Ll/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ll/a;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ll/a;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Ll/a;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Ll/a;->c:Ll/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Ll/b;->n:LM/C0;

    .line 10
    .line 11
    iget v0, p0, Ll/a;->b:I

    .line 12
    .line 13
    invoke-static {p1, v0}, Ll/b;->b(Ll/b;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ll/a;->c:Ll/b;

    .line 2
    .line 3
    invoke-static {p1}, Ll/b;->a(Ll/b;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ll/a;->a:Z

    .line 8
    .line 9
    return-void
.end method

.method public withFinalVisibility(LM/C0;I)Ll/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/a;->c:Ll/b;

    .line 2
    .line 3
    iput-object p1, v0, Ll/b;->n:LM/C0;

    .line 4
    .line 5
    iput p2, p0, Ll/a;->b:I

    .line 6
    .line 7
    return-object p0
.end method
