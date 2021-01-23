-- phpMyAdmin SQL Dump
-- version 2.6.3-pl1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 05, 2006 at 10:49 PM
-- Server version: 4.0.18
-- PHP Version: 5.0.4
-- 
-- Database: `stagdata`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `games`
-- 

CREATE TABLE `games` (
  `id` int(4) NOT NULL auto_increment,
  `headline` varchar(120) default NULL,
  `date` date default NULL,
  `review` blob,
  `comment` varchar(120) default NULL,
  `home_away` char(1) default NULL,
  `opposition` varchar(20) default NULL,
  `stag_score` int(3) default NULL,
  `oppo_score` int(3) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `games`
-- 

INSERT INTO `games` VALUES (1, 'Stags lead the way in Harringey', '2006-01-20', 0x537461677320326e642067616d65206f6620323030362070726f76656420746f20626520616e20757020616e6420646f776e20766963746f72792e2050756c6c696e67206177617920746f206120636f6d666f727461626c65206c65616420696e20746865203173742068616c662c206d69737365642066726565207468726f77732c207475726e6f7665727320616e64206120636f75706c65206f6620717569636b203327732066726f6d20746865206f70706f736974696f6e2073686f6f74696e6720677561726420616c6c206c656420746f20612073696e676c65206469676974206c65616420696e207468652033726420717561727465722e20427574206e6f7420746f2062652064656e6965642074686520737461677320666564207468652062616c6c20696e7369646520746f2073636f72652077697468206561736520646f776e206c6f772c207769746820476c6f76657220616e64204261626220646f696e67206d6f7374206f66207468652064616d61676520696e207468697320717561727465722e204465737069746520636f6e74696e756564206d69737365732066726f6d20746865206c696e6520286120746f74616c206f662031392077657265206d697373656420696e207468652067616d6521212920746865205374616773206d616e6167656420746f2070756c6c206f75742061206e65617220323020706f696e74206c65616420746f20636f61737420746f20766963746f727920696e20746865206c61737420666577206d696e757465732e0d0a0d0a5370656369616c206d656e74696f6e206d75737420676f20746f207468652074726176656c6c696e6720737570706f72746572732067726f75702077686f207475726e6564206f7574206c6f75646c7920616e6420696e20666f72636520746f206368656572207573206f6e210d0a, 'Next fixture is home to NW Jazz on 30 Jan 2006', 'A', 'Harringey Warriors', 84, 70);
INSERT INTO `games` VALUES (2, 'Stags lose their tune in Jazz shootout', '2006-01-29', 0x5374616773207365636f6e6420686f6d652067616d65206f662074686520736561736f6e2073746172746564206f666620617420612068656374696320706163652c20617320746865204a617a7a20747269656420746f206661737420627265616b206f6e20657665727920706f7373657373696f6e2e204166746572207468652031737420717561727465722074686f7567682074686520737461677320686164206275696c742061206865616c7468792032362d3139206c656164207768696c6520706c6179696e6720746865204a617a7a206174207468656972206f776e2067616d652e204120666c75727279206f66203327732066726f6d20746865204a617a7a20776173206d6574206279206d6f7265206661737420627265616b20706f696e747320616e6420646f6d696e6174696e672073636f72696e6720696e736964652066726f6d20426162622e2048616c6674696d6520537461677320776572652075702035352d34352e205468652074686972642071756172746572207761732061207469676874206166666169722c207769746820746865204a617a7a2073636f72696e67206d6f73746c792066726f6d20746865206f7574736964652c20616e6420537461677320636f6e74696e75696e696e6720746f206d6174636820746865697220796f756e676572206f70706f6e656e74732c2032322d323220696e207468652074686972642e200d0a0d0a57697468206120313020706f696e74206c65616420676f696e6720696e746f207468652034746820616c6c207468652053746167732068616420746f20646f2077617320746f2074616b652063617265206f66207468652062616c6c20616e6420776f726b20746865206f6666656e73652e20486f77657665722061207072657373696e6720646566656e73652066726f6d20746865204a617a7a20776869636820666f726365642061206e756d626572206f66207475726e6f7665727320696e207468652066696e616c20666577206d696e7574657320616e64203520746872656520706f696e7465727320746f2066696e697368207468652067616d652c206c656420746865204a617a7a20746f2061203120706f696e74206c65616420776974682039207365636f6e6473206c6566742e20537461677320676f74207468652062616c6c2075702d636f7572742062757420612073686f742077697468206f6e6c79206120636f75706c65206f66207365636f6e6473206c6566742072696d6d6564206f757420746f206c656176652074686520737461677320666f756c696e6720616e6420746865204a617a7a206f6e20746865206c696e6520776974682031207365636f6e6420746f20676f2e204f6e6520666f756c2073686f74206d61646520616e64207468652067616d6520776173206f7665722c20612067726561742073686f6f74696e6720646973706c6179206275742061206372757368696e67206465666561742e, '', 'H', 'NW Jazz Falcons', 101, 103);
INSERT INTO `games` VALUES (3, 'Stags come up short against Eastern Bloc', '2005-11-28', 0x5374616773206d61646520746865697220686f6d652064656275742061742069736c696e67746f6e20477265656e207363686f6f6c20666f72207468652030352d303620736561736f6e2c20616e642068616420746865206d6967687479206368616c6c656e6765206f6620706c6179696e67204c69746875616e69616e20424220696e20746865206375702c2061207465616d20612066756c6c2074776f206469766973696f6e732061626f76652120486f77657665722c20616e20696d6d656469617465207365746261636b20696e20746865207761726d207570206173206e65776c79207369676e6564207574696c697479206d616e20436872697320476c6f76657220617474656d707465642061206d6f6e73746572206a616d20616e64206a756d70656420736f206869676820686520666f72676f7420686f7720746f20636f6d6520646f776e2c206c616e64696e672061776b776172646c79206f6e2068697320616e6b6c652e205468656e207468657265207765726520736576656e2e204275742077697468204c61727279204a617a7a20616e64202774686520426f6e6527206d616e6e696e6720746865207461626c652074686572652077617320706c656e7479206f6620737570706f727420666f72207468652072656d61696e696e672053746167732e20416e64206173207468652067616d6520737461727465642c2069742077617320636c65617220746865207465616d2077657265206e6f7420696e74696d6d69646174656420627920746865205072656d696572204469766973696f6e207465616d2c2073636f72696e6720667265656c79206f6e2074686520627265616b2c20616e64206b656570696e6720746865204c69746875616e69616e206c6561642077697468696e2073696e676c65206469676974732e204120636f75706c65206f6620646167676572203327732066726f6d20746865204561737465726e204575726f7065616e2073686172702073686f6f7465727320657874656e646564207468656972206c65616420746f2031312061667465722074686520666972737420717561727465722e20496e20746865207365636f6e64207175617274657220746865205374616773207374727567676c656420746f2073636f7265206173207468657920666f7263656420746865204c69746875616e69616e7320696e746f20612072652d7468696e6b2c206275742074686569722073776974636820746f2061207a6f6e6520636175676874207468652072756e20262067756e205374616773206f66662067756172642c20616e6420746865206c6561642061742068616c662074696d65207761732034342d32342e0d0a0d0a496e20746865207365636f6e642068616c662074686f7567682053746167732063616d65206f7574206669676874696e67202c2073636f72696e6720313920696e2074686520337264207175617274657220616e6420323520696e20746865203474682c2077696e6e696e6720626f746820717561727465727320616e6420636c6561726c79206672757374726174696e6720616e6420636f6e667573696e6720746865206f70706f736974696f6e207769746820746865697220687573736c6520616e64204e6f72746865726e2074726173682d74616c6b2e204f6e6c792074776f203320706f696e74657273207765726520636f6e636564656420696e20746865207365636f6e642068616c662c2061206d656173757265206f662074686520696d70726f76656d656e7420696e2074686520537461677320706572696d6574657220646566656e73652e204120746f75676820706879736963616c2067616d652c20616e642061206c6f74206c6561726e742066726f6d207175616c697479206f70706f736974696f6e2c2074616b696e67206120706572666f6d616e6365206c696b65207468697320696e746f207468652072656d61696e696e672044697620322066697874757265732063616e206f6e6c79206272696e6720706f73697469766520726573756c74732e, 'Next fixture is away to Mac Pro South East on the', 'H', 'Lithuanian BB', 68, 85);
INSERT INTO `games` VALUES (4, 'Stags gallop to win in South bank', '2005-11-13', 0x416e6f74686572206c617a792073756e646179206c756e636874696d652c20616e64205374616773206d6164652074686569722077617920746f20536f7574682042616e6b20756e692c20746f20706c61792074686520796f75746866756c20326e64207465616d206f66204f6d6567612c20696e207468697320706f74656e7469616c6c7920746f70206f6620746865207461626c6520636c6173682e205769746820612062656e63682066756c6c206f6620706c617965727320616e6420796f757468206f6e20746865697220736964652c204f6d656761206c6f6f6b656420746f2072756e20616e642067756e206561726c792c206173207468657920717569636b6c79206275696c7420616e203820706f696e74206c6561642e205468652053746167732072652d67726f7570656420616e6420737769746368656420746f2074686569722077656c6c2d686f6d656420332d3220646566656e73653b207468697320667275737472617465642074686520796f756e676572206f70706f736974696f6e20616e64206120736572696573206f66206661737420627265616b732066726f6d204d617263686573692c205061726b7320616e64206e6577636f6d657220476c6f76657220726573756c74656420696e2053746167732074616b696e672074686520666972737420717561727465722032342d31382e20496e20746865207365636f6e64207175617274657220537461677320746f74616c6c79206f7574706c61796564204f6d6567612c20616761696e2074616b696e67206974207374726f6e6720746f2074686520686f6f7020616e642067657474696e6720746865206f70706f736974696f6e20696e746f206561726c7920666f756c2074726f75626c652c20616e642062792068616c662074696d652068616420612076657279206865616c7468792034372d3332206c6561642e0d0a0d0a546865207365636f6e642068616c6620776173206d756368206f66207468652073616d652c207769746820537461677320646566656e736520676976696e6720757020706f696e747320726172656c7920616e64204f6d656761206e6f742061626c6520746f2073746f70207468652053746167732072656c656e746c657373206661737420627265616b2e2033726420616e6420347468207175617274657273207765726520616c736f20776f6e202d206174206f6e6520706f696e742053746167732077657265207570203330202d20666f7220616e206f766572616c6c20766963746f7279206f662038332d36342e20416e6f7468657220736f6c69642077696e20666f72207468652053746167732c20612077656c636f6d652072657475726e20746f20666f726d2066726f6d204d616e6368657361646f20616e6420616e20657863656c6c656e742064656275742066726f6d20476c6f766572206d616e6e696e672074686520706f696e7420666f72206d6f7374206f66207468652067616d652e, 'Next fixture is Stags first game to LBB on 28thNov', 'A', 'Omega ''B''', 82, 64);
INSERT INTO `games` VALUES (5, 'Stags lose their way in South London', '2005-11-04', 0x416e6f74686572206c617a792073756e646179206c756e636874696d652c20616e64205374616773206d6164652074686569722077617920746f20536f7574682042616e6b20756e692c20746f20706c61792074686520796f75746866756c20326e64207465616d206f66204f6d6567612c20696e207468697320706f74656e7469616c6c7920746f70206f6620746865207461626c6520636c6173682e205769746820612062656e63682066756c6c206f6620706c617965727320616e6420796f757468206f6e20746865697220736964652c204f6d656761206c6f6f6b656420746f2072756e20616e642067756e206561726c792c206173207468657920717569636b6c79206275696c7420616e203820706f696e74206c6561642e205468652053746167732072652d67726f7570656420616e6420737769746368656420746f2074686569722077656c6c2d686f6d656420332d3220646566656e73653b207468697320667275737472617465642074686520796f756e676572206f70706f736974696f6e20616e64206120736572696573206f66206661737420627265616b732066726f6d204d617263686573692c205061726b7320616e64206e6577636f6d657220476c6f76657220726573756c74656420696e2053746167732074616b696e672074686520666972737420717561727465722032342d31382e20496e20746865207365636f6e64207175617274657220537461677320746f74616c6c79206f7574706c61796564204f6d6567612c20616761696e2074616b696e67206974207374726f6e6720746f2074686520686f6f7020616e642067657474696e6720746865206f70706f736974696f6e20696e746f206561726c7920666f756c2074726f75626c652c20616e642062792068616c662074696d652068616420612076657279206865616c7468792034372d3332206c6561642e0d0a0d0a546865207365636f6e642068616c6620776173206d756368206f66207468652073616d652c207769746820537461677320646566656e736520676976696e6720757020706f696e747320726172656c7920616e64204f6d656761206e6f742061626c6520746f2073746f70207468652053746167732072656c656e746c657373206661737420627265616b2e2033726420616e6420347468207175617274657273207765726520616c736f20776f6e202d206174206f6e6520706f696e742053746167732077657265207570203330202d20666f7220616e206f766572616c6c20766963746f7279206f662038332d36342e20416e6f7468657220736f6c69642077696e20666f72207468652053746167732c20612077656c636f6d652072657475726e20746f20666f726d2066726f6d204d616e6368657361646f20616e6420616e20657863656c6c656e742064656275742066726f6d20476c6f766572206d616e6e696e672074686520706f696e7420666f72206d6f7374206f66207468652067616d652e, 'Next fixture away to Omega B on the 11th November.', 'A', 'CIA ''B''', 63, 66);
INSERT INTO `games` VALUES (6, 'Stagtastic 5 keep Falcons flying low', '2005-10-23', 0x53746167732073686f77656420757020696e2048656e646f6e206e6f7420737572652069662074686572652077617320612067616d65206f72206e6f742c2062757420736f6f6e20666f756e6420746865204e57204a417a7a207465616d207761726d696e6720757020736f206974206c6f6f6b6564206c696b652067616d65206f6e2e204f6e652070726f626c656d2c2074686579206661696c656420746f206f7267616e697365207265667320666f72207468652067616d652e204c75636b696c7920736f6d652073656e696f72204d6964646c6573657820706c61796572732061677265656420746f20726566207468652067616d6520616e6420616674657220746865206c6f6e676573742035206d616e207761726d20757020696e20686973746f7279207468652053746167732027537570657220352720746f6f6b20746f2074686520666c6f6f722e204e6f742077616e74696e6720746f2077617374652076616c7561626c6520347468207175617274657220656e657267792074686520537461677320676f74206f666620746f206120736c6f772073746172742c20616e64206f6e6365206974207761732066696775726564206f75742074686174206f6e6c79206f6e65204a617a7a20706c617965722077617320676f696e6720746f2073636f72652028616e6420707572656c79206f6e20332773292068657920736f6f6e207374617274656420746f20636c6177206261636b20746865206c6561642e2042792068616c6674696d6520746865206c65616420776173206a75737420362c20616e64207468652053746167732068616420686172646c792062726f6b656e20612073776561742c20636c6561726c79207573696e67207468656972207665746572616e20736d6172747320746f2073617665207468656d73656c76657320666f72206c6174657220696e207468652067616d652e0d0a0d0a42792074686520656e64206f6620746865207468697264207175617274657220746865206c6561642077617320646f776e20746f203120706f696e742c20616e642074686973206f6e6c792064756520746f206120636f75706c65206f66203320706f696e7420277072617965727327206f6666657265642075702062792074686520796f756e67204a617a7a207465616d2e20486176696e67207368757420646f776e207468656972206f6e652073636f72696e672074687265617420776974682074686520757365206f66206120746967687420332d32207a6f6e652c2069742077617320696e20746865203474682071756172746572207468617420746865205374616773206d616465207468656972206d61726b2077697468206120666c75727279206f662064726976657320746f2074686520686f6f7020746f206f70656e2075702061206865616c746879203720706f696e74206c65616420656e746572696e67207468652066696e616c2032206d696e757465732e64657370697465206120636f75706c65206f66206c617465204a617a7a206261736b657473204465616e20274d616368696e65272050696e6e6f636b2070757420746865206963696e67206f6e207468652063616b6520696e207468652066696e616c206d696e757465207769746820612074726164656d61726b2070756c6c2d757020746f207365616c207468652077696e2e0d0a0d0a416c6c20696e20616c6c206120676f6f64206177617920766963746f72792077697468206a757374203520706c617965727320286176657261676520616765203132302920746f2074686569722031322b3220286176657261676520616765203136292e20, 'Next fixture away to CIA B on the 4th Nov', 'A', 'NW Jaz Falcons', 51, 47);
INSERT INTO `games` VALUES (7, 'Stags start 7th season with a bang', '2005-10-16', 0x4369747920537461677320776f6e206120746f7567682061776179206669787475726520746f2073746172742074686569722030352f3036204c6f6e646f6e204d65742063616d706169676e2c207468652037746820696e2074686520636c75627320686973746f72792e20416674657220737572766976696e6720616e20696e697469616c206275727374206f66203327732066726f6d20616e206174686c6574696320576573747369646520616e6420686176696e67206f6e6c79203520706c617965727320696e207468652066697273742068616c662028616e64206e6f206b6974207468616e6b7320746f2061206d616c66756e6374696f6e696e6720666c757820636170616369746f72292074686520537461677320626567616e2061737361756c74696e67205765737473696465277320686f6f702c2064726177696e6720666f756c7320616e642067657474696e67207468656d20696e746f206561726c7920666f756c2074726f75626c652e2054686520726573756c74696e672066726565207468726f77732070756c6c656420746865205374616773206c6576656c20756e74696c207468657920746f6f6b20746865206c656164206a757374206265666f72652068616c662074696d6520776974682061207374656164696c7920696d70726f76696e67206f6666656e73652e0d0a0d0a496e20746865207365636f6e642068616c662053746167732075707065642074686520646566656e737369766520696e74656e73697479202857657374696465206f6e6c792073636f72656420313420706f696e747320696e20746865207365636f6e642068616c6620696e20746f74616c2920616e64207769746820612074696d65206c6f7264206261636b2066726f6d20746865206675747572652c20776572652061626c6520746f2070756c6c206177617920666f72206120636f6d666f727461626c6520313720706f696e7420766963746f72792e20416e6420616c6c207468697320776974686f757420616e7920747261696e696e672e2e2e7468652066757475726520706f73736962696c69746965732061726520656e646c657373212120, 'Next fixture away to NW Jaz Falcons on the 23rd,October', 'A', 'Westside 2', 55, 38);
INSERT INTO `games` VALUES (8, 'Stag''s ''big man'' 9 point play seals deserved league win over EY Knights', '2005-02-08', 0x416e20696e6372656469626c65203920706f696e7420706c61792062792063656e747265204d6f6e74726f73652042616262207365616c6564206120646573657276656420766963746f727920666f722074686520537461677320616761696e7374207468656972206f6c6420666f65732c204559204b6e69676874732e2044726976696e6720746f2074686520686f6f7020696e20746865206479696e67207365636f6e6473206f66207468652067616d652c2074686520756e73746f707061626c65202766756e6b79272077617320666f756c65642068617264206279206120646573706572617465204b6e696768747320646566656e6465722c20627574207374696c6c206d6164652074686520746f756768206c617975702e204120736572696573206f6620746563686e6963616c20666f756c7320666f6c6c6f7765642066726f6d20746865204559206b6e696768747320706c61796572732c20756e61626c6520746f20636f6e74726f6c207468656972206672757374726174696f6e206174206e6f74206265696e672061626c6520746f2073746f7020746865207374726f6e672063656e7472652e20426162622077656e74206f6e20746f2068697420362f372066726f6d20746865206c696e6520746f20636f6d706c65746520746865206d656d6f7261626c6520706c61792c20746f207468652064656c69676874206f6620746865206368656572696e672063726f77642e, 'A spokesman for Guiness World Records said they were looking into their archives for validation in the 2006 annual.', 'H', 'EY Knights', 65, 51);
INSERT INTO `games` VALUES (11, 'Diba and Yousef fall in love', '2006-02-20', 0x44696261206861732066616c6c656e20666f7220596f75736566207468652070696c6f742e20204168686868686868682e2054686520656e64, 'This is a test', '', 'USA', 100, 45);
