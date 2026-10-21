.class Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;

    .line 5
    .line 6
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->access$000(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;

    .line 12
    .line 13
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->access$000(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method
