.class public final Lcom/tencent/bugly/proguard/at;
.super Lcom/tencent/bugly/proguard/m;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static d:[B


# instance fields
.field public a:B

.field public b:Ljava/lang/String;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/at;->a:B

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:[B

    .line 20
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;[B)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/at;->a:B

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:[B

    .line 24
    iput-byte p1, p0, Lcom/tencent/bugly/proguard/at;->a:B

    .line 25
    iput-object p2, p0, Lcom/tencent/bugly/proguard/at;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/tencent/bugly/proguard/at;->c:[B

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/k;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/at;->a:B

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/k;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/at;->a:B

    .line 45
    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->b:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/tencent/bugly/proguard/at;->d:[B

    if-nez v0, :cond_0

    .line 48
    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/bugly/proguard/at;->d:[B

    .line 50
    sget-object v0, Lcom/tencent/bugly/proguard/at;->d:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 52
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/at;->d:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:[B

    .line 53
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/l;)V
    .locals 2

    .prologue
    .line 32
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/at;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:[B

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a([BI)V

    .line 38
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
