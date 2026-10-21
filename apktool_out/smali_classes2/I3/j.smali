.class public final LI3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/L;


# instance fields
.field public final synthetic a:LI3/t;


# direct methods
.method public constructor <init>(LI3/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI3/j;->a:LI3/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;LM/h1;)LM/h1;
    .locals 1

    .line 1
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetBottom()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, LI3/j;->a:LI3/t;

    .line 6
    .line 7
    iput p1, v0, LI3/t;->m:I

    .line 8
    .line 9
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetLeft()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, v0, LI3/t;->n:I

    .line 14
    .line 15
    invoke-virtual {p2}, LM/h1;->getSystemWindowInsetRight()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, v0, LI3/t;->o:I

    .line 20
    .line 21
    invoke-virtual {v0}, LI3/t;->c()V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method
