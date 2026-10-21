.class public final Ln2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln2/z;

.field public final b:LL/e;

.field public c:I


# direct methods
.method public constructor <init>(Ln2/z;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln2/v;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ln2/v;-><init>(Ln2/w;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x96

    .line 10
    .line 11
    invoke-static {v1, v0}, LH2/h;->threadSafe(ILH2/d;)LL/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ln2/w;->b:LL/e;

    .line 16
    .line 17
    iput-object p1, p0, Ln2/w;->a:Ln2/z;

    .line 18
    .line 19
    return-void
.end method
