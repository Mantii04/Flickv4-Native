.class Lcom/loopj/android/http/RequestHandle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/RequestHandle;

.field final synthetic val$_request:Lcom/loopj/android/http/AsyncHttpRequest;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/RequestHandle;Lcom/loopj/android/http/AsyncHttpRequest;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loopj/android/http/RequestHandle$1;->this$0:Lcom/loopj/android/http/RequestHandle;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/loopj/android/http/RequestHandle$1;->val$_request:Lcom/loopj/android/http/AsyncHttpRequest;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/loopj/android/http/RequestHandle$1;->val$mayInterruptIfRunning:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle$1;->val$_request:Lcom/loopj/android/http/AsyncHttpRequest;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/loopj/android/http/RequestHandle$1;->val$mayInterruptIfRunning:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpRequest;->cancel(Z)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
