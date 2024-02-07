package kotlinTasks.easy;

import java.util.concurrent.CountDownLatch;

class Foo {

    public Foo() {}

    private CountDownLatch firstCountDownLatch = new CountDownLatch(1);
    private CountDownLatch secondCountDownLatch = new CountDownLatch(1);

    public void first(Runnable printFirst) throws InterruptedException {

        // printFirst.run() outputs "first". Do not change or remove this line.
        System.out.println("FIRST " + Thread.currentThread().getName());
        printFirst.run();
        firstCountDownLatch.countDown();
    }

    public void second(Runnable printSecond) throws InterruptedException {

        // printSecond.run() outputs "second". Do not change or remove this line.
        System.out.println("SECOND " + Thread.currentThread().getName());
        firstCountDownLatch.await();
        printSecond.run();
        secondCountDownLatch.countDown();
    }

    public void third(Runnable printThird) throws InterruptedException {

        // printThird.run() outputs "third". Do not change or remove this line.
        System.out.println("THIRD " + Thread.currentThread().getName());
        secondCountDownLatch.await();
        printThird.run();
    }
}

class Main {


    public static void main(String[] args) {
        Foo foo = new Foo();

        Runnable runnable1 = () -> System.out.println("done1");
        Runnable runnable2 = () -> System.out.println("done2");
        Runnable runnable3 = () -> System.out.println("done3");

        Runnable r1 = () -> {
            try {
                foo.first(runnable1);
            } catch (InterruptedException interruptedException) {
                System.out.println("R1 is interrupted");
                Thread.currentThread().interrupt();
            }
        };
        Runnable r2 = () -> {
            try {
                foo.second(runnable2);
            } catch (InterruptedException interruptedException) {
                System.out.println("R2 is interrupted");
                Thread.currentThread().interrupt();
            }
        };
        Runnable r3 = () -> {
            try {
                foo.third(runnable3);
            } catch (InterruptedException interruptedException) {
                System.out.println("R3 is interrupted");
                Thread.currentThread().interrupt();
            }
        };

        Thread thread1 = new Thread(r1);
        Thread thread2 = new Thread(r2);
        Thread thread3 = new Thread(r3);

        thread3.start();
        thread2.start();
        thread1.start();
    }
}