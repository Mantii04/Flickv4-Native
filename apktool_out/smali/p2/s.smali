.class public final Lp2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/f;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final e:LH2/k;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LH2/k;->newInstance()LH2/k;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lp2/s;->e:LH2/k;

    .line 9
    .line 10
    iput-object p1, p0, Lp2/s;->b:Ljava/security/MessageDigest;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getVerifier()LH2/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/s;->e:LH2/k;

    .line 2
    .line 3
    return-object v0
.end method
