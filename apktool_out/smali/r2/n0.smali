.class public final Lr2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/a;


# instance fields
.field public final a:Lo2/b;


# direct methods
.method public constructor <init>(Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/n0;->a:Lo2/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/File;Ll2/q;)Z
    .locals 5

    .line 2
    const-string p3, "StreamEncoder"

    const-class v0, [B

    iget-object v1, p0, Lr2/n0;->a:Lo2/b;

    move-object v2, v1

    check-cast v2, Lo2/l;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3, v0}, Lo2/l;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 5
    invoke-virtual {v4, v0, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 8
    :catch_1
    check-cast v1, Lo2/l;

    invoke-virtual {v1, v0}, Lo2/l;->put(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    const/4 p2, 0x3

    .line 9
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    const-string p2, "Failed to encode data onto the OutputStream"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v3, :cond_2

    .line 11
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 12
    :catch_3
    :cond_2
    check-cast v1, Lo2/l;

    invoke-virtual {v1, v0}, Lo2/l;->put(Ljava/lang/Object;)V

    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    .line 13
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 14
    :catch_4
    :cond_3
    check-cast v1, Lo2/l;

    invoke-virtual {v1, v0}, Lo2/l;->put(Ljava/lang/Object;)V

    .line 15
    throw p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Ll2/q;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lr2/n0;->encode(Ljava/io/InputStream;Ljava/io/File;Ll2/q;)Z

    move-result p1

    return p1
.end method
