<?php
/**
 * Created by IntelliJ IDEA.
 * User: hjshin
 * Date: 13. 8. 8.
 * Time: 오전 1:10
 * To change this template use File | Settings | File Templates.
 */
?>
<?php if(!defined('ROUTE_START')) exit('No direct access!!!');

class MangoStorm {
    // 생성자
    // post data가 있는 경우 메시지 수신으로 보고
    // 다음 동작을 취한다.
    function __construct() {
        // post data 가져오기.
    }

    // Ping을 보낸다.
    function sendPing() {

    }

    // Ping수신시 Pong을 보낸다.
    function sendPong() {

    }

    // SEARCH를 보낸다.
    function sendSearch() {

    }

    // 들어온 SEARCH를 중계한다.
    function relaySearch() {

    }

    // SEARCH 수신 후 해당 데이터가 있는 경우 RESPONSE를 보낸다.
    function sendResponse() {

    }

    // 외부에서 INSERT가 들어오는 경우 peer url을 저장한다.
    function sendInsert() {

    }
}


?>