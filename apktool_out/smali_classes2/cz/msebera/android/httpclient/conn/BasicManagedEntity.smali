.class public Lcz/msebera/android/httpclient/conn/BasicManagedEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "Connection"

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 10
    .line 11
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    .line 12
    .line 13
    return-void
.end method

.method private ensureConsumed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 11
    .line 12
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 16
    .line 17
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 13
    .line 14
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :goto_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 4
    .line 5
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public releaseManagedConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->abortConnection()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 17
    .line 18
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_2
    throw p1

    .line 29
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :goto_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
