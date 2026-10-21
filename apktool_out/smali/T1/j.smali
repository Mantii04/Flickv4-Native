.class public final LT1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/I;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResult(LT1/i;)V
    .locals 1

    .line 1
    sget-object p1, LT1/q;->a:Ljava/util/HashMap;

    .line 2
    iget-object v0, p0, LT1/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, LT1/i;

    invoke-virtual {p0, p1}, LT1/j;->onResult(LT1/i;)V

    return-void
.end method
