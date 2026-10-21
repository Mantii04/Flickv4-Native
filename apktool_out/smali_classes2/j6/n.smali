.class public final Lj6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/V;


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
    iput-object p1, p0, Lj6/n;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public head(Lj6/p;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lj6/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lj6/p;->doSetBaseUri(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tail(Lj6/p;I)V
    .locals 0

    .line 1
    return-void
.end method
