.class public final LK3/m;
.super Lx3/K;
.source "SourceFile"


# instance fields
.field public final synthetic b:LK3/q;


# direct methods
.method public constructor <init>(LK3/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK3/m;->b:LK3/q;

    .line 2
    .line 3
    invoke-direct {p0}, Lx3/K;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK3/m;->b:LK3/q;

    .line 2
    .line 3
    invoke-virtual {v0}, LK3/q;->b()LK3/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, LK3/r;->afterEditTextChanged(Landroid/text/Editable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, LK3/m;->b:LK3/q;

    .line 2
    .line 3
    invoke-virtual {p1}, LK3/q;->b()LK3/r;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, LK3/r;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
