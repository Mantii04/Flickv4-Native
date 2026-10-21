.class public Lcom/loopj/android/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWrapper"
.end annotation


# instance fields
.field public final autoClose:Z

.field public final contentType:Ljava/lang/String;

.field public final inputStream:Ljava/io/InputStream;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 11
    .line 12
    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p2, "application/octet-stream"

    .line 6
    .line 7
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/loopj/android/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
