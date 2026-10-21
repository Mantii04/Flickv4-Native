.class public final LO5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO5/d;


# instance fields
.field public final a:LO5/d;

.field public final b:LH5/l;


# direct methods
.method public constructor <init>(LO5/d;LH5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO5/d;",
            "LH5/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "sequence"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "transformer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, LO5/n;->a:LO5/d;

    .line 15
    .line 16
    iput-object p2, p0, LO5/n;->b:LH5/l;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getSequence$p(LO5/n;)LO5/d;
    .locals 0

    .line 1
    iget-object p0, p0, LO5/n;->a:LO5/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTransformer$p(LO5/n;)LH5/l;
    .locals 0

    .line 1
    iget-object p0, p0, LO5/n;->b:LH5/l;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, LO5/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LO5/m;-><init>(LO5/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
