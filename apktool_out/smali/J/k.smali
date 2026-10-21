.class public final LJ/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/a;


# instance fields
.field public final synthetic a:LC/k;


# direct methods
.method public constructor <init>(LC/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ/k;->a:LC/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(LJ/n;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, LJ/n;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, LJ/n;-><init>(I)V

    .line 3
    :cond_0
    iget-object v0, p0, LJ/k;->a:LC/k;

    invoke-virtual {v0, p1}, LC/k;->t(LJ/n;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, LJ/n;

    invoke-virtual {p0, p1}, LJ/k;->accept(LJ/n;)V

    return-void
.end method
