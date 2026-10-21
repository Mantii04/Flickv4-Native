.class public Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected final managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Connection"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 9
    .line 10
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 17
    .line 18
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->releaseConnection()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :goto_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 24
    .line 25
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->releaseConnection()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 2
    .line 3
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->abortConnection()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 9
    .line 10
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 17
    .line 18
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->releaseConnection()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :goto_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 24
    .line 25
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->releaseConnection()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
