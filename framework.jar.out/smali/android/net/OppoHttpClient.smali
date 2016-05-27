.class public Landroid/net/OppoHttpClient;
.super Ljava/lang/Object;
.source "OppoHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;
    }
.end annotation


# static fields
.field private static final AVERAGE_RECEIVE_TIME:J = 0x340L

.field private static final DEBUG:Z = true

.field private static final GMT_BEIJING_OFFSET:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "OppoHttpClient"

.field private static final VALID_LAST_TIME_THRESHOLD:J = 0x5dcL

.field private static mLastGotSuccessLocaltime:J = 0x0L

.field private static final oppoServerURL_RANDOM:Ljava/lang/String; = "http://newds01.myoppo.com/autotime/dateandtime.xml?number="

.field private static final oppoServerURL_RANDOM2:Ljava/lang/String; = "http://newds02.myoppo.com/autotime/dateandtime.xml?number="


# instance fields
.field private mHttpTime:J

.field private mHttpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/net/OppoHttpClient;->mLastGotSuccessLocaltime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method private forceRefreshTimeFromOppoServer(Landroid/content/Context;II)Z
    .locals 50
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selServerUrl"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 75
    const/16 v41, 0x0

    .line 76
    .local v41, "returnFlag":Z
    const/16 v45, 0x0

    .line 77
    .local v45, "url":Ljava/net/URL;
    const-string v3, "OppoHttpClient"

    const-string v4, "Enter forceRefreshTimeFromOppoServer run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    const-string v34, "http://newds01.myoppo.com/autotime/dateandtime.xml?number="

    .line 80
    .local v34, "oppoServerURL":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 81
    const-string v34, "http://newds02.myoppo.com/autotime/dateandtime.xml?number="

    .line 83
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 84
    new-instance v46, Ljava/net/URL;

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v45    # "url":Ljava/net/URL;
    .local v46, "url":Ljava/net/URL;
    :try_start_1
    const-string v3, "OppoHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cur http request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v12, 0x0

    .line 89
    .local v12, "httpconn":Ljava/net/HttpURLConnection;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v36

    .line 90
    .local v36, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v37

    .line 92
    .local v37, "proxyPort":I
    const-string v3, "OppoHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OppoServer proxyHost = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proxyPort = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct/range {p0 .. p1}, Landroid/net/OppoHttpClient;->getNetType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    const-string v3, "OppoHttpClient"

    const-string v4, "Get network type success!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual/range {v46 .. v46}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .end local v12    # "httpconn":Ljava/net/HttpURLConnection;
    check-cast v12, Ljava/net/HttpURLConnection;

    .line 98
    .restart local v12    # "httpconn":Ljava/net/HttpURLConnection;
    const-string v3, "OppoHttpClient"

    const-string v4, "HttpURLConnection open openConnection success!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 108
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 110
    if-lez p2, :cond_1

    .line 111
    mul-int/lit8 p3, p3, 0x3

    .line 113
    :cond_1
    const-string v3, "OppoHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    .line 118
    .local v38, "requestTicks":J
    const-string v3, "OppoHttpClient"

    const-string v4, "Strart to connect http server!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 122
    const-string v3, "OppoHttpClient"

    const-string v4, "Connect http server success!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/16 v21, 0x0

    .line 133
    .local v21, "mInputStreamReader":Ljava/io/InputStreamReader;
    const/4 v15, 0x0

    .line 134
    .local v15, "mBufferedReader":Ljava/io/BufferedReader;
    const-string v20, ""

    .line 135
    .local v20, "mDateTimeXmlString":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 136
    .local v16, "mBeginParseTime":J
    const-wide/16 v42, 0x0

    .line 137
    .local v42, "responseTicks":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/OppoHttpClient;->mHttpTimeReference:J

    .line 139
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v40

    .line 140
    .local v40, "responseCode":I
    const-string v3, "OppoHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http responseCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v3, 0xc8

    move/from16 v0, v40

    if-ne v0, v3, :cond_4

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 145
    new-instance v21, Ljava/io/InputStreamReader;

    .end local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    .restart local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    new-instance v15, Ljava/io/BufferedReader;

    .end local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    .restart local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    const-string v14, ""

    .line 148
    .local v14, "lineString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 149
    move-object/from16 v20, v14

    goto :goto_1

    .line 100
    .end local v14    # "lineString":Ljava/lang/String;
    .end local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v16    # "mBeginParseTime":J
    .end local v20    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v38    # "requestTicks":J
    .end local v40    # "responseCode":I
    .end local v42    # "responseTicks":J
    :cond_2
    const-string v3, "OppoHttpClient"

    const-string v4, "Use http proxy!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v35, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 103
    .local v35, "proxy":Ljava/net/Proxy;
    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v12

    .end local v12    # "httpconn":Ljava/net/HttpURLConnection;
    check-cast v12, Ljava/net/HttpURLConnection;

    .restart local v12    # "httpconn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 151
    .end local v35    # "proxy":Ljava/net/Proxy;
    .restart local v14    # "lineString":Ljava/lang/String;
    .restart local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "mBeginParseTime":J
    .restart local v20    # "mDateTimeXmlString":Ljava/lang/String;
    .restart local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .restart local v38    # "requestTicks":J
    .restart local v40    # "responseCode":I
    .restart local v42    # "responseTicks":J
    :cond_3
    const-string v3, "OppoHttpClient"

    const-string v4, "Read response data success!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v14    # "lineString":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/OppoHttpClient;->mHttpTimeReference:J

    .line 156
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 157
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStreamReader;->close()V

    .line 158
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    const-string v3, "OppoHttpClient"

    const-string v4, "Start to parser http response data!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v31

    .line 163
    .local v31, "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v31 .. v31}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v30

    .line 164
    .local v30, "mSaxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v30 .. v30}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v33

    .line 165
    .local v33, "mXmlReader":Lorg/xml/sax/XMLReader;
    new-instance v19, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;-><init>(Landroid/net/OppoHttpClient;)V

    .line 166
    .local v19, "mDateTimeXmlParseHandler":Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 167
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 169
    invoke-virtual/range {v19 .. v19}, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->getDate()Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, "mDateString":Ljava/lang/String;
    const-string v3, "-"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "dateStrings":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 172
    .local v26, "mIntDateData":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v3, v9

    if-ge v13, v3, :cond_5

    .line 173
    aget-object v3, v9, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v26, v13

    .line 172
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 176
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;->getTime()Ljava/lang/String;

    move-result-object v32

    .line 177
    .local v32, "mTimeString":Ljava/lang/String;
    const-string v3, ":"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v44

    .line 178
    .local v44, "timeStrings":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v27, v0

    .line 179
    .local v27, "mIntTimeData":[I
    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, v44

    array-length v3, v0

    if-ge v13, v3, :cond_6

    .line 180
    aget-object v3, v44, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v27, v13

    .line 179
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 183
    :cond_6
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 184
    .local v2, "mOppoServerTime":Landroid/text/format/Time;
    const-string v3, "OppoHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parser time success, hour= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v27, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v27, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "seconds ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v27, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v3, 0x2

    aget v3, v27, v3

    const/4 v4, 0x1

    aget v4, v27, v4

    const/4 v5, 0x0

    aget v5, v27, v5

    const/4 v6, 0x2

    aget v6, v26, v6

    const/4 v7, 0x1

    aget v7, v26, v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    aget v8, v26, v8

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 188
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/32 v6, 0x1b77400

    sub-long v24, v4, v6

    .line 190
    .local v24, "mGMTTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 191
    .local v22, "mEndParseTime":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v4, v3

    add-long v4, v4, v24

    sub-long v6, v22, v16

    add-long/2addr v4, v6

    const-wide/16 v6, 0x340

    add-long v28, v4, v6

    .line 194
    .local v28, "mNow":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int v10, v3, v4

    .line 196
    .local v10, "daylightOffset":I
    int-to-long v4, v10

    add-long v4, v4, v28

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/OppoHttpClient;->mHttpTime:J

    .line 198
    sub-long v4, v42, v38

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/OppoHttpClient;->mRoundTripTime:J

    .line 199
    const/16 v41, 0x1

    .line 216
    const-class v4, Landroid/net/OppoHttpClient;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v48, Landroid/net/OppoHttpClient;->mLastGotSuccessLocaltime:J

    sub-long v6, v6, v48

    const-wide/16 v48, 0x5dc

    cmp-long v3, v6, v48

    if-lez v3, :cond_7

    const-string/jumbo v3, "persist.sys.lasttime"

    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v24

    if-ltz v3, :cond_7

    .line 219
    const-string v3, "OppoHttpClient"

    const-string v5, "Cached by carrieroperator or others, Need Ntp algin time!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "OppoHttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGMTTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v41, 0x0

    .line 226
    :goto_4
    monitor-exit v4

    move-object/from16 v45, v46

    .line 234
    .end local v2    # "mOppoServerTime":Landroid/text/format/Time;
    .end local v9    # "dateStrings":[Ljava/lang/String;
    .end local v10    # "daylightOffset":I
    .end local v12    # "httpconn":Ljava/net/HttpURLConnection;
    .end local v13    # "i":I
    .end local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v16    # "mBeginParseTime":J
    .end local v18    # "mDateString":Ljava/lang/String;
    .end local v19    # "mDateTimeXmlParseHandler":Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;
    .end local v20    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v22    # "mEndParseTime":J
    .end local v24    # "mGMTTime":J
    .end local v26    # "mIntDateData":[I
    .end local v27    # "mIntTimeData":[I
    .end local v28    # "mNow":J
    .end local v30    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .end local v31    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v32    # "mTimeString":Ljava/lang/String;
    .end local v33    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .end local v34    # "oppoServerURL":Ljava/lang/String;
    .end local v36    # "proxyHost":Ljava/lang/String;
    .end local v37    # "proxyPort":I
    .end local v38    # "requestTicks":J
    .end local v40    # "responseCode":I
    .end local v42    # "responseTicks":J
    .end local v44    # "timeStrings":[Ljava/lang/String;
    .end local v46    # "url":Ljava/net/URL;
    .restart local v45    # "url":Ljava/net/URL;
    :goto_5
    return v41

    .line 223
    .end local v45    # "url":Ljava/net/URL;
    .restart local v2    # "mOppoServerTime":Landroid/text/format/Time;
    .restart local v9    # "dateStrings":[Ljava/lang/String;
    .restart local v10    # "daylightOffset":I
    .restart local v12    # "httpconn":Ljava/net/HttpURLConnection;
    .restart local v13    # "i":I
    .restart local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "mBeginParseTime":J
    .restart local v18    # "mDateString":Ljava/lang/String;
    .restart local v19    # "mDateTimeXmlParseHandler":Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;
    .restart local v20    # "mDateTimeXmlString":Ljava/lang/String;
    .restart local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .restart local v22    # "mEndParseTime":J
    .restart local v24    # "mGMTTime":J
    .restart local v26    # "mIntDateData":[I
    .restart local v27    # "mIntTimeData":[I
    .restart local v28    # "mNow":J
    .restart local v30    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .restart local v31    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v32    # "mTimeString":Ljava/lang/String;
    .restart local v33    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .restart local v34    # "oppoServerURL":Ljava/lang/String;
    .restart local v36    # "proxyHost":Ljava/lang/String;
    .restart local v37    # "proxyPort":I
    .restart local v38    # "requestTicks":J
    .restart local v40    # "responseCode":I
    .restart local v42    # "responseTicks":J
    .restart local v44    # "timeStrings":[Ljava/lang/String;
    .restart local v46    # "url":Ljava/net/URL;
    :cond_7
    const-string/jumbo v3, "persist.sys.lasttime"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Landroid/net/OppoHttpClient;->mLastGotSuccessLocaltime:J

    goto :goto_4

    .line 226
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 229
    .end local v2    # "mOppoServerTime":Landroid/text/format/Time;
    .end local v9    # "dateStrings":[Ljava/lang/String;
    .end local v10    # "daylightOffset":I
    .end local v12    # "httpconn":Ljava/net/HttpURLConnection;
    .end local v13    # "i":I
    .end local v15    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v16    # "mBeginParseTime":J
    .end local v18    # "mDateString":Ljava/lang/String;
    .end local v19    # "mDateTimeXmlParseHandler":Landroid/net/OppoHttpClient$DateTimeXmlParseHandler;
    .end local v20    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v21    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v22    # "mEndParseTime":J
    .end local v24    # "mGMTTime":J
    .end local v26    # "mIntDateData":[I
    .end local v27    # "mIntTimeData":[I
    .end local v28    # "mNow":J
    .end local v30    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .end local v31    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v32    # "mTimeString":Ljava/lang/String;
    .end local v33    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .end local v36    # "proxyHost":Ljava/lang/String;
    .end local v37    # "proxyPort":I
    .end local v38    # "requestTicks":J
    .end local v40    # "responseCode":I
    .end local v42    # "responseTicks":J
    .end local v44    # "timeStrings":[Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object/from16 v45, v46

    .line 230
    .end local v34    # "oppoServerURL":Ljava/lang/String;
    .end local v46    # "url":Ljava/net/URL;
    .local v11, "e":Ljava/lang/Exception;
    .restart local v45    # "url":Ljava/net/URL;
    :goto_6
    const-string v3, "OppoHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oppoServer exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v41, 0x0

    goto :goto_5

    .line 229
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    goto :goto_6
.end method

.method private getNetType(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 239
    .local v1, "conn":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v4

    .line 243
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 244
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "type":Ljava/lang/String;
    const-string v6, "WIFI"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 250
    goto :goto_0

    .line 251
    :cond_2
    const-string v6, "MOBILE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "GPRS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 252
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "apn":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v6, "cmwap"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move v4, v5

    .line 256
    goto :goto_0

    .end local v0    # "apn":Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 260
    goto :goto_0
.end method


# virtual methods
.method public getHttpTime()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Landroid/net/OppoHttpClient;->mHttpTime:J

    return-wide v0
.end method

.method public getHttpTimeReference()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Landroid/net/OppoHttpClient;->mHttpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Landroid/net/OppoHttpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Landroid/content/Context;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selServerUrl"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/net/OppoHttpClient;->forceRefreshTimeFromOppoServer(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method
