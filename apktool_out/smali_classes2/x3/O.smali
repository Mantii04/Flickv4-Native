.class public final Lx3/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/L;


# instance fields
.field public final synthetic a:Lx3/Q;

.field public final synthetic b:Lx3/S;


# direct methods
.method public constructor <init>(Lx3/Q;Lx3/S;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/O;->a:Lx3/Q;

    .line 5
    .line 6
    iput-object p2, p0, Lx3/O;->b:Lx3/S;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;LM/h1;)LM/h1;
    .locals 2

    .line 1
    new-instance v0, Lx3/S;

    .line 2
    .line 3
    iget-object v1, p0, Lx3/O;->b:Lx3/S;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx3/S;-><init>(Lx3/S;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx3/O;->a:Lx3/Q;

    .line 9
    .line 10
    check-cast v1, Ll3/e;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, v0}, Ll3/e;->onApplyWindowInsets(Landroid/view/View;LM/h1;Lx3/S;)LM/h1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
