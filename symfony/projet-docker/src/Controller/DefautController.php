<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use App\Repository\TodoRepository;
use App\Entity\Todo;

class DefautController extends AbstractController
{
    #[Route('/defaut', name: 'app_defaut')]
    public function index(TodoRepository $todoRepository): Response
    {
        return $this->render('defaut/index.html.twig', [
            'todo' => $todoRepository->findAll(),
        ]);
    }
}
