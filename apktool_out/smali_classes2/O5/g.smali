.class public final LO5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO5/d;


# instance fields
.field public final synthetic a:LH5/p;


# direct methods
.method public constructor <init>(LH5/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO5/g;->a:LH5/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
    iget-object v0, p0, LO5/g;->a:LH5/p;

    .line 2
    .line 3
    invoke-static {v0}, LO5/h;->iterator(LH5/p;)Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
