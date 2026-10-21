.class public final Ln2/d;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:Ll2/m;

.field public final b:Z

.field public c:Ln2/M;


# direct methods
.method public constructor <init>(Ll2/m;Ln2/G;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ll2/m;

    .line 9
    .line 10
    iput-object p1, p0, Ln2/d;->a:Ll2/m;

    .line 11
    .line 12
    iget-boolean p1, p2, Ln2/G;->b:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    iget-object p2, p2, Ln2/G;->f:Ln2/M;

    .line 19
    .line 20
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Ln2/M;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    :goto_0
    iput-object p2, p0, Ln2/d;->c:Ln2/M;

    .line 29
    .line 30
    iput-boolean p1, p0, Ln2/d;->b:Z

    .line 31
    .line 32
    return-void
.end method
