.class public final LQ3/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/O;


# instance fields
.field public final synthetic a:LP3/p;


# direct methods
.method public constructor <init>(LP3/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LQ3/M;->a:LP3/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, LQ3/M;->a:LP3/p;

    .line 2
    .line 3
    invoke-interface {p1, p2}, LP3/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
