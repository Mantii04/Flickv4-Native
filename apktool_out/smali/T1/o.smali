.class public final LT1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/o;->b:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, LT1/o;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public call()LT1/L;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT1/L;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LT1/o;->b:Ljava/io/InputStream;

    iget-object v1, p0, LT1/o;->e:Ljava/lang/String;

    invoke-static {v0, v1}, LT1/q;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)LT1/L;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LT1/o;->call()LT1/L;

    move-result-object v0

    return-object v0
.end method
