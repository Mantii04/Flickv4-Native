.class public Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PoolEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->this$0:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 5
    .line 6
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 13
    .line 14
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->close()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 5
    .line 6
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 13
    .line 14
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->shutdown()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
