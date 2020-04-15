//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Router;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


//
// TODO documentation
//
network Network
{
    @display("bgb=677,409");
    submodules:
        source: Source {
            @display("p=53,191");
        }
        router: Router {
            @display("p=173,191");
        }
        passiveQueue: PassiveQueue {
            @display("p=324,63");
        }
        passiveQueue1: PassiveQueue {
            @display("p=321,152");
        }
        passiveQueue2: PassiveQueue {
            @display("p=321,238");
        }
        passiveQueue3: PassiveQueue {
            @display("p=321,325");
        }
        server: Server {
            @display("p=479,191");
        }
        sink: Sink {
            @display("p=613,191");
        }
    connections:
        source.out --> router.in++;
        router.out++ --> passiveQueue.in++;
        router.out++ --> passiveQueue1.in++;
        router.out++ --> passiveQueue2.in++;
        router.out++ --> passiveQueue3.in++;
        passiveQueue.out++ --> server.in++;
        passiveQueue1.out++ --> server.in++;
        passiveQueue2.out++ --> server.in++;
        passiveQueue3.out++ --> server.in++;
        server.out --> sink.in++;
}

